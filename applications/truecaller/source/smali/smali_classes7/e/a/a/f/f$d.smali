.class public final synthetic Le/a/a/f/f$d;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/f/f;->Kj(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/data/entity/Contact;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/a/f/f;)V
    .locals 7

    const-class v3, Le/a/a/f/f;

    const/4 v1, 0x1

    const-string v4, "onInvitedByContactResult"

    const-string v5, "onInvitedByContactResult(Lcom/truecaller/data/entity/Contact;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/a/f/f;

    .line 3
    iget-object v1, v0, Le/a/a/f/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 4
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Le/a/a/f/f;->i:Le/a/a/k/a/a/q;

    invoke-interface {p1, v1}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/f/e;

    if-eqz v1, :cond_1

    iget-object v0, v0, Le/a/a/f/f;->g:Le/a/p5/c0;

    const v2, 0x7f1202e6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026itationDescription, name)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Le/a/a/f/e;->d(Ljava/lang/String;)V

    .line 7
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
