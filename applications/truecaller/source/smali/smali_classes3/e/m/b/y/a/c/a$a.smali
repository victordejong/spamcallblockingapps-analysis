.class public final Le/m/b/y/a/c/a$a;
.super Le/m/b/x/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/y/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private canAddChildren:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canChangeCopyRequiresWriterPermission:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canChangeViewersCanCopyContent:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canComment:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canCopy:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canDelete:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canDeleteChildren:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canDownload:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canEdit:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canListChildren:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveChildrenOutOfDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveChildrenOutOfTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveChildrenWithinDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveChildrenWithinTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveItemIntoTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveItemOutOfDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveItemOutOfTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveItemWithinDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveItemWithinTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canMoveTeamDriveItem:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canReadDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canReadRevisions:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canReadTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canRemoveChildren:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canRename:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canShare:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canTrash:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canTrashChildren:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private canUntrash:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/b/x/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Le/m/b/x/d/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/a$a;->l()Le/m/b/y/a/c/a$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/a$a;->l()Le/m/b/y/a/c/a$a;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/c/b;->j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/a$a;

    return-object p1
.end method

.method public bridge synthetic i()Le/m/b/x/c/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/y/a/c/a$a;->l()Le/m/b/y/a/c/a$a;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/c/b;->j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/c/a$a;

    return-object p1
.end method

.method public l()Le/m/b/y/a/c/a$a;
    .locals 1

    .line 1
    invoke-super {p0}, Le/m/b/x/c/b;->i()Le/m/b/x/c/b;

    move-result-object v0

    check-cast v0, Le/m/b/y/a/c/a$a;

    return-object v0
.end method
