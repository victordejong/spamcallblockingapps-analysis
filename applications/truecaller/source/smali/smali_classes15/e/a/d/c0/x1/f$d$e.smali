.class public final Le/a/d/c0/x1/f$d$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/x1/f$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/telecom/CallAudioState;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/x1/f$d;

.field public final synthetic c:Ls1/z/b/l;

.field public final synthetic d:Lq3/a/x2/a1;


# direct methods
.method public constructor <init>(Le/a/d/c0/x1/f$d;Ls1/z/b/l;Lq3/a/x2/a1;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/x1/f$d$e;->b:Le/a/d/c0/x1/f$d;

    iput-object p2, p0, Le/a/d/c0/x1/f$d$e;->c:Ls1/z/b/l;

    iput-object p3, p0, Le/a/d/c0/x1/f$d$e;->d:Lq3/a/x2/a1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroid/telecom/CallAudioState;

    const-string v0, "state"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New audio state is received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/d/c0/x1/f$d$e;->b:Le/a/d/c0/x1/f$d;

    iget-object v0, v0, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

    .line 5
    iget-object v0, v0, Le/a/d/c0/x1/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/r0/b;

    .line 6
    invoke-virtual {v0}, Le/a/p5/r0/b;->b()Le/a/p5/r0/d;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Le/a/d/c0/x1/a$d;->a:Le/a/d/c0/x1/a$d;

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, v0, Le/a/p5/r0/d;->a:Le/a/p5/r0/a;

    if-eqz v1, :cond_3

    .line 11
    new-instance v2, Le/a/d/c0/x1/a$a;

    invoke-direct {v2, v1}, Le/a/d/c0/x1/a$a;-><init>(Le/a/p5/r0/a;)V

    move-object v1, v2

    goto :goto_0

    .line 12
    :cond_3
    new-instance v1, Le/a/d/c0/x1/a$a;

    iget-object v2, p0, Le/a/d/c0/x1/f$d$e;->b:Le/a/d/c0/x1/f$d;

    iget-object v2, v2, Le/a/d/c0/x1/f$d;->g:Le/a/d/c0/x1/f;

    .line 13
    new-instance v3, Le/a/p5/r0/a;

    .line 14
    iget-object v2, v2, Le/a/d/c0/x1/f;->m:Le/a/p5/c0;

    sget v4, Lcom/truecaller/voip/R$string;->voip_button_bluetooth:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resourceProvider.getStri\u2026ng.voip_button_bluetooth)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    .line 15
    invoke-direct {v3, v2, v4}, Le/a/p5/r0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-direct {v1, v3}, Le/a/d/c0/x1/a$a;-><init>(Le/a/p5/r0/a;)V

    goto :goto_0

    .line 17
    :cond_4
    sget-object v1, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    :goto_0
    if-nez v1, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    new-instance v2, Le/a/d/c0/x1/b;

    .line 19
    iget-object v0, v0, Le/a/p5/r0/d;->b:Ljava/util/List;

    .line 20
    invoke-direct {v2, v1, v0}, Le/a/d/c0/x1/b;-><init>(Le/a/d/c0/x1/a;Ljava/util/List;)V

    .line 21
    iget-object v0, p0, Le/a/d/c0/x1/f$d$e;->c:Ls1/z/b/l;

    invoke-interface {v0, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Le/a/d/c0/x1/f$d$e;->d:Lq3/a/x2/a1;

    invoke-interface {v0, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 23
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
