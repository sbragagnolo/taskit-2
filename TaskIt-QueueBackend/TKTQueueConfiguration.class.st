Class {
	#name : #TKTQueueConfiguration,
	#superclass : #Object,
	#instVars : [
		'roundRobinQueueName',
		'masterQueueName',
		'host',
		'login',
		'passcode',
		'port',
		'broadcastQueueName',
		'heartbeatQueueName'
	],
	#category : #'TaskIt-QueueBackend'
}

{ #category : #'as yet unclassified' }
TKTQueueConfiguration class >> default [

	^ self new
		host: '192.168.103.52';
		port: 61613;
		login: 'test';
	 	passcode: 'test';
		roundRobinQueue: 'roundRobin';
		broadcastQueue: '/exchange/amq.fanout';
		masterQueue: 'master';
		heartbeatQueue: 'heartbeat';
		yourself.

]

{ #category : #accessing }
TKTQueueConfiguration >> broadcastQueue: aString [ 
	
	broadcastQueueName := aString
]

{ #category : #accessing }
TKTQueueConfiguration >> broadcastQueueName [ 
	
	^ broadcastQueueName
]

{ #category : #configuring }
TKTQueueConfiguration >> configureConnection: aStampClient [ 
	
	aStampClient 
		host: host;
		login: login;
		passcode: passcode;
		port: port
]

{ #category : #accessing }
TKTQueueConfiguration >> heartbeatQueue: aString [ 
	
	heartbeatQueueName := aString
]

{ #category : #accessing }
TKTQueueConfiguration >> heartbeatQueueName [
	
	^ heartbeatQueueName , '-' , NetNameResolver localHostName
]

{ #category : #accessing }
TKTQueueConfiguration >> host: aString [ 
	
	host := aString
]

{ #category : #accessing }
TKTQueueConfiguration >> login: aString [ 
	
	login := aString
]

{ #category : #accessing }
TKTQueueConfiguration >> masterQueue: aString [ 
	
	masterQueueName := aString
]

{ #category : #accessing }
TKTQueueConfiguration >> masterQueueName [
	
	^ masterQueueName
]

{ #category : #accessing }
TKTQueueConfiguration >> passcode: aString [ 
	
	passcode := aString
]

{ #category : #accessing }
TKTQueueConfiguration >> port: anInteger [ 
	
	port := anInteger
]

{ #category : #accessing }
TKTQueueConfiguration >> roundRobinQueue: aString [ 
	
	roundRobinQueueName := aString
]

{ #category : #accessors }
TKTQueueConfiguration >> roundRobinQueueName [
	^ roundRobinQueueName
]