SELECT * 
FROM Users 
WHERE DateOfBirth BETWEEN '2000-01-01' AND '2004-12-31';

SELECT * 
FROM Posts 
WHERE PostedBy = 4;

SELECT GroupName 
FROM Groups;

SELECT * 
FROM GroupMembershipRequests 
WHERE GroupMemberUserID = 2;

Select u.*
From users u
Join Friends f On (u.UserID = f.FriendBeingAdded)
Where f.friendWhoAdded = 2 And f.IsAccepted = True
Union
Select u.*
From users u
Join Friends f On (u.UserID = f.FriendWhoAdded)
Where f.FriendBeingAdded = 2 and f.IsAccepted = True

SELECT * 
FROM Friends
WHERE FriendWhoAdded = 1;

SELECT * 
FROM Posts 
WHERE IsPublic = False
  And IsOnlyForFriends = True
  And GroupID = 2;

SELECT * 
FROM GroupMembershipRequests 
WHERE GroupID = 2 AND IsGroupMemberShipAccepted = FALSE;
