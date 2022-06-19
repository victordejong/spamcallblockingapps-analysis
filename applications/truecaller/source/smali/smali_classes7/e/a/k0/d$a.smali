.class public final Le/a/k0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/k0/l/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/d;


# direct methods
.method public constructor <init>(Le/a/k0/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/d$a;->a:Le/a/k0/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k0/l/m;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/k0/l/m;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New session state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    sget-object p2, Le/a/k0/l/m$b;->a:Le/a/k0/l/m$b;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    sget-object p1, Le/a/k0/h$c;->a:Le/a/k0/h$c;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p2, Le/a/k0/l/m$c;->a:Le/a/k0/l/m$c;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    sget-object p1, Le/a/k0/h$d;->a:Le/a/k0/h$d;

    goto :goto_0

    .line 7
    :cond_1
    instance-of p2, p1, Le/a/k0/l/m$d;

    if-eqz p2, :cond_2

    .line 8
    new-instance p2, Le/a/k0/h$e;

    check-cast p1, Le/a/k0/l/m$d;

    .line 9
    iget-object p1, p1, Le/a/k0/l/m$d;->a:Le/a/k0/l/l;

    .line 10
    iget-object v0, p1, Le/a/k0/l/l;->d:Lw3/b/a/b;

    .line 11
    iget-wide v1, p1, Le/a/k0/l/l;->e:J

    .line 12
    invoke-direct {p2, v0, v1, v2}, Le/a/k0/h$e;-><init>(Lw3/b/a/b;J)V

    move-object p1, p2

    goto :goto_0

    .line 13
    :cond_2
    instance-of p2, p1, Le/a/k0/l/m$a;

    if-eqz p2, :cond_4

    .line 14
    iget-object p2, p0, Le/a/k0/d$a;->a:Le/a/k0/d;

    iget-object p2, p2, Le/a/k0/d;->f:Le/a/k0/c;

    const/4 v0, 0x1

    .line 15
    iget-object p2, p2, Le/a/k0/c;->i:Le/a/k0/o/a;

    invoke-interface {p2, v0}, Le/a/k0/o/a;->t(Z)V

    .line 16
    check-cast p1, Le/a/k0/l/m$a;

    .line 17
    iget-object p1, p1, Le/a/k0/l/m$a;->a:Le/a/k0/l/j;

    .line 18
    iget-object p1, p1, Le/a/k0/l/j;->c:Lcom/truecaller/callrecording/recorder/RecordingError;

    .line 19
    sget-object p2, Lcom/truecaller/callrecording/recorder/RecordingError;->NONE:Lcom/truecaller/callrecording/recorder/RecordingError;

    if-ne p1, p2, :cond_3

    .line 20
    sget-object p1, Le/a/k0/h$a;->a:Le/a/k0/h$a;

    goto :goto_0

    .line 21
    :cond_3
    iget-object p1, p0, Le/a/k0/d$a;->a:Le/a/k0/d;

    iget-object p1, p1, Le/a/k0/d;->f:Le/a/k0/c;

    .line 22
    iget-object p1, p1, Le/a/k0/c;->p:Lo3/a;

    .line 23
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k0/l/c;

    invoke-interface {p1}, Le/a/k0/l/c;->reset()V

    .line 24
    iget-object p1, p0, Le/a/k0/d$a;->a:Le/a/k0/d;

    iget-object p1, p1, Le/a/k0/d;->f:Le/a/k0/c;

    const p2, 0x7f12094e

    .line 25
    invoke-virtual {p1, p2}, Le/a/k0/c;->K(I)Lq3/a/p1;

    .line 26
    new-instance p1, Le/a/k0/h$b;

    new-instance p2, Ljava/lang/Exception;

    iget-object v0, p0, Le/a/k0/d$a;->a:Le/a/k0/d;

    iget-object v0, v0, Le/a/k0/d;->f:Le/a/k0/c;

    .line 27
    iget-object v0, v0, Le/a/k0/c;->b:Lq3/a/x2/a1;

    .line 28
    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/h;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Le/a/k0/h$b;-><init>(Ljava/lang/Exception;)V

    .line 29
    :goto_0
    iget-object p2, p0, Le/a/k0/d$a;->a:Le/a/k0/d;

    iget-object p2, p2, Le/a/k0/d;->f:Le/a/k0/c;

    .line 30
    iget-object p2, p2, Le/a/k0/c;->b:Lq3/a/x2/a1;

    .line 31
    invoke-interface {p2, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 32
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 33
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
