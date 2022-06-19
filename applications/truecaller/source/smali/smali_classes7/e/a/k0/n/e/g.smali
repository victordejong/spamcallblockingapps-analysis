.class public final Le/a/k0/n/e/g;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/k0/n/e/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/k0/n/e/f;",
        ">;",
        "Le/a/k0/n/e/d;"
    }
.end annotation


# instance fields
.field public b:Z

.field public c:I

.field public d:J

.field public final e:Le/a/k0/n/e/e;

.field public final f:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/k0/n/e/e;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k0/n/e/e;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlayPauseAction"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/k0/n/e/g;->e:Le/a/k0/n/e/e;

    iput-object p2, p0, Le/a/k0/n/e/g;->f:Ls1/z/b/l;

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Le/a/k0/n/e/g;->d:J

    return-void
.end method


# virtual methods
.method public C0(I)V
    .locals 2

    .line 1
    iget v0, p0, Le/a/k0/n/e/g;->c:I

    if-lez v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p1, 0x64

    .line 2
    div-int/2addr v1, v0

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/e/f;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1, p1}, Le/a/k0/n/e/f;->Y(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Hj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/g;->e:Le/a/k0/n/e/e;

    .line 2
    iget-wide v1, p0, Le/a/k0/n/e/g;->d:J

    .line 3
    invoke-interface {v0, v1, v2}, Le/a/k0/n/e/e;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Le/a/k0/n/e/g;->c:I

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Le/a/k0/n/e/g;->e:Le/a/k0/n/e/e;

    .line 5
    iget-wide v1, p0, Le/a/k0/n/e/g;->d:J

    .line 6
    invoke-interface {v0, v1, v2, p0}, Le/a/k0/n/e/e;->d(JLe/a/k0/n/e/b;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Le/a/k0/n/e/g;->b:Z

    .line 8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/e/f;

    if-eqz v0, :cond_0

    iget v1, p0, Le/a/k0/n/e/g;->c:I

    invoke-interface {v0, v1}, Le/a/k0/n/e/f;->F(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Le/a/k0/n/e/g;->e:Le/a/k0/n/e/e;

    invoke-interface {v0}, Le/a/k0/n/e/e;->f()Le/a/k0/n/e/a;

    move-result-object v0

    .line 10
    iget-boolean v1, v0, Le/a/k0/n/e/a;->a:Z

    .line 11
    iget v0, v0, Le/a/k0/n/e/a;->b:I

    .line 12
    iget-object v2, p0, Le/a/k0/n/e/g;->f:Ls1/z/b/l;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v1, p0, Le/a/k0/n/e/g;->c:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v0, 0x64

    .line 14
    div-int/2addr v2, v1

    .line 15
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/k0/n/e/f;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2, v0}, Le/a/k0/n/e/f;->Y(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public O4(Le/a/k0/n/e/c;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "event"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, p1, Le/a/k0/n/e/c$a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/e/f;

    if-eqz v0, :cond_5

    check-cast p1, Le/a/k0/n/e/c$a;

    .line 2
    iget p1, p1, Le/a/k0/n/e/c$a;->a:I

    .line 3
    invoke-interface {v0, p1}, Le/a/k0/n/e/f;->d(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Le/a/k0/n/e/c$b;->a:Le/a/k0/n/e/c$b;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p0, Le/a/k0/n/e/g;->f:Ls1/z/b/l;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k0/n/e/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/k0/n/e/f;->e()V

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Le/a/k0/n/e/g;->b:Z

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, p1, Le/a/k0/n/e/c$d;

    if-eqz v1, :cond_4

    .line 9
    check-cast p1, Le/a/k0/n/e/c$d;

    .line 10
    iget p1, p1, Le/a/k0/n/e/c$d;->a:I

    .line 11
    iput p1, p0, Le/a/k0/n/e/g;->c:I

    .line 12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/e/f;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Le/a/k0/n/e/f;->F(I)V

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/k0/n/e/g;->f:Ls1/z/b/l;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_4
    sget-object v1, Le/a/k0/n/e/c$c;->a:Le/a/k0/n/e/c$c;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le/a/k0/n/e/g;->f:Ls1/z/b/l;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method public W3(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/g;->e:Le/a/k0/n/e/e;

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-interface {v0, p1, v1}, Le/a/k0/n/e/e;->c(ILcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k0/n/e/f;

    if-eqz v0, :cond_0

    iget v1, p0, Le/a/k0/n/e/g;->c:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    invoke-interface {v0, p1, v1}, Le/a/k0/n/e/f;->Y(II)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/k0/n/e/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/k0/n/e/g;->Hj()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/k0/n/e/g;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/k0/n/e/g;->e:Le/a/k0/n/e/e;

    invoke-interface {v0}, Le/a/k0/n/e/e;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method
