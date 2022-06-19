.class public final Le/a/b0/a/c/l;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/c/l;->b:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Le/a/b0/a/c/m/a;

    .line 2
    new-instance v2, Le/a/b0/a/c/m/a$b;

    .line 3
    sget-object v3, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->TopLeft:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    .line 4
    new-instance v4, Le/a/b0/a/c/m/a$c;

    sget-object v5, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->BottomRight:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    const/4 v6, 0x0

    const-string v7, ""

    invoke-direct {v4, v5, v7, v6, v6}, Le/a/b0/a/c/m/a$c;-><init>(Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;Ljava/lang/String;II)V

    const-string v5, "Test"

    .line 5
    invoke-direct {v2, v3, v5, v4}, Le/a/b0/a/c/m/a$b;-><init>(Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;Ljava/lang/String;Le/a/b0/a/c/m/a$c;)V

    aput-object v2, v1, v6

    .line 6
    new-instance v2, Le/a/b0/a/c/m/a$c;

    .line 7
    sget-object v3, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->BottomLeft:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    const-string v4, "#E5F3FF"

    .line 8
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#0087FF"

    .line 9
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "M"

    .line 10
    invoke-direct {v2, v3, v6, v4, v5}, Le/a/b0/a/c/m/a$c;-><init>(Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 11
    new-instance v2, Le/a/b0/a/c/m/a$d;

    sget-object v4, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->Right:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    invoke-direct {v2, v4}, Le/a/b0/a/c/m/a$d;-><init>(Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 12
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 13
    new-instance v1, Le/a/b0/a/c/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Le/a/b0/a/c/k;-><init>(Le/a/b0/a/c/l;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {v2, v1, v3, v2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
