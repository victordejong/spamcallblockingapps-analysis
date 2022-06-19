.class public final Le/a/a/c/g/g$b$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g/g$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$joinGroup$1$3$isAlreadyMember$1"
    f = "GroupInvitePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ls1/z/c/c0;

.field public final synthetic g:Le/a/a/c/g/g$b;

.field public final synthetic h:Lq3/a/i0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/z/c/c0;Ls1/w/d;Le/a/a/c/g/g$b;Lq3/a/i0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g/g$b$c;->e:Ljava/lang/String;

    iput-object p2, p0, Le/a/a/c/g/g$b$c;->f:Ls1/z/c/c0;

    iput-object p4, p0, Le/a/a/c/g/g$b$c;->g:Le/a/a/c/g/g$b;

    iput-object p5, p0, Le/a/a/c/g/g$b$c;->h:Lq3/a/i0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/g/g$b$c;

    iget-object v1, p0, Le/a/a/c/g/g$b$c;->e:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/c/g/g$b$c;->f:Ls1/z/c/c0;

    iget-object v4, p0, Le/a/a/c/g/g$b$c;->g:Le/a/a/c/g/g$b;

    iget-object v5, p0, Le/a/a/c/g/g$b$c;->h:Lq3/a/i0;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/c/g/g$b$c;-><init>(Ljava/lang/String;Ls1/z/c/c0;Ls1/w/d;Le/a/a/c/g/g$b;Lq3/a/i0;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/c/g/g$b$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/c/g/g$b$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/g/g$b$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/c/g/g$b$c;->g:Le/a/a/c/g/g$b;

    iget-object p1, p1, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

    .line 2
    iget-object p1, p1, Le/a/a/c/g/g;->k:Le/a/a/k/a/a/d;

    .line 3
    iget-object v0, p0, Le/a/a/c/g/g$b$c;->e:Ljava/lang/String;

    iget-object v1, p0, Le/a/a/c/g/g$b$c;->f:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Le/a/a/k/a/a/d;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
