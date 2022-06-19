.class public final Le/a/a/g/j0/y;
.super Le/a/a/g/j0/w;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/x;


# instance fields
.field public final j2:I

.field public final k2:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/g/j0/w;-><init>(Landroid/database/Cursor;)V

    const-string v0, "me_group_title"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/y;->j2:I

    const-string v0, "me_group_avatar"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/y;->k2:I

    return-void
.end method


# virtual methods
.method public I0()Lcom/truecaller/messaging/data/types/ImGroupInfo;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    new-instance v25, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-object/from16 v1, v25

    .line 2
    iget v2, v0, Le/a/a/g/j0/y;->j2:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget v2, v0, Le/a/a/g/j0/y;->k2:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v2, Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-object v9, v2

    const/4 v5, -0x1

    invoke-direct {v2, v5, v5, v5, v5}, Lcom/truecaller/messaging/data/types/ImGroupPermissions;-><init>(IIII)V

    const-string v2, ""

    const-wide/16 v5, -0x1

    const-string v7, ""

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x10000

    .line 5
    invoke-direct/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;I)V

    return-object v25
.end method
