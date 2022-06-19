.class public final Le/a/k0/n/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/n/c/d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/k0/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/n/c/d;


# direct methods
.method public constructor <init>(Le/a/k0/n/c/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/c/d$a;->a:Le/a/k0/n/c/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Le/a/k0/h;

    .line 2
    iget-object p2, p0, Le/a/k0/n/c/d$a;->a:Le/a/k0/n/c/d;

    iget-object p2, p2, Le/a/k0/n/c/d;->f:Le/a/k0/n/c/f;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p2, Le/a/k0/n/c/f;->i:Z

    .line 4
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/k0/n/c/c;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2, v0}, Le/a/k0/n/c/c;->setIconEnabled(Z)V

    .line 6
    :cond_0
    sget-object p2, Le/a/k0/h$c;->a:Le/a/k0/h$c;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Le/a/k0/n/c/d$a;->a:Le/a/k0/n/c/d;

    iget-object p1, p1, Le/a/k0/n/c/d;->f:Le/a/k0/n/c/f;

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/c/c;

    if-eqz p1, :cond_6

    .line 8
    invoke-interface {p1}, Le/a/k0/n/c/c;->cf()V

    goto :goto_0

    .line 9
    :cond_1
    sget-object p2, Le/a/k0/h$d;->a:Le/a/k0/h$d;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p1, p0, Le/a/k0/n/c/d$a;->a:Le/a/k0/n/c/d;

    iget-object p1, p1, Le/a/k0/n/c/d;->f:Le/a/k0/n/c/f;

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p1, Le/a/k0/n/c/f;->i:Z

    .line 12
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/c/c;

    if-eqz p1, :cond_6

    .line 13
    invoke-interface {p1, p2}, Le/a/k0/n/c/c;->setIconEnabled(Z)V

    goto :goto_0

    .line 14
    :cond_2
    instance-of p2, p1, Le/a/k0/h$e;

    if-eqz p2, :cond_3

    iget-object p2, p0, Le/a/k0/n/c/d$a;->a:Le/a/k0/n/c/d;

    iget-object p2, p2, Le/a/k0/n/c/d;->f:Le/a/k0/n/c/f;

    check-cast p1, Le/a/k0/h$e;

    .line 15
    iget-wide v0, p1, Le/a/k0/h$e;->b:J

    .line 16
    iget-object p1, p2, Le/a/k0/n/c/f;->k:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {p1}, Lcom/truecaller/callrecording/CallRecordingManager;->w()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Le/a/k0/n/c/f;->f:Ljava/lang/String;

    .line 17
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/c/c;

    if-eqz p1, :cond_6

    invoke-interface {p1, v0, v1}, Le/a/k0/n/c/c;->q8(J)V

    goto :goto_0

    .line 18
    :cond_3
    sget-object p2, Le/a/k0/h$a;->a:Le/a/k0/h$a;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget-object p1, p0, Le/a/k0/n/c/d$a;->a:Le/a/k0/n/c/d;

    iget-object p1, p1, Le/a/k0/n/c/d;->f:Le/a/k0/n/c/f;

    .line 19
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/k0/n/c/c;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Le/a/k0/n/c/c;->cf()V

    .line 20
    :cond_4
    iput-object v0, p1, Le/a/k0/n/c/f;->f:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_5
    instance-of p2, p1, Le/a/k0/h$b;

    if-eqz p2, :cond_6

    iget-object p2, p0, Le/a/k0/n/c/d$a;->a:Le/a/k0/n/c/d;

    iget-object v1, p2, Le/a/k0/n/c/d;->f:Le/a/k0/n/c/f;

    check-cast p1, Le/a/k0/h$b;

    .line 22
    iget-object p1, p1, Le/a/k0/h$b;->a:Ljava/lang/Exception;

    .line 23
    iput-object v0, v1, Le/a/k0/n/c/f;->f:Ljava/lang/String;

    .line 24
    new-instance v4, Le/a/k0/n/c/e;

    invoke-direct {v4, v1, p1, v0}, Le/a/k0/n/c/e;-><init>(Le/a/k0/n/c/f;Ljava/lang/Exception;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 25
    :cond_6
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
