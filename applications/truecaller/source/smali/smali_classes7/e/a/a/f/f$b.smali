.class public final synthetic Le/a/a/f/f$b;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/f/f;->Jj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/a/f/f;)V
    .locals 7

    const-class v3, Le/a/a/f/f;

    const/4 v1, 0x1

    const-string v4, "onGroupInfo"

    const-string v5, "onGroupInfo(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/a/f/f;

    .line 3
    invoke-virtual {v0, p1}, Le/a/a/f/f;->Kj(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
