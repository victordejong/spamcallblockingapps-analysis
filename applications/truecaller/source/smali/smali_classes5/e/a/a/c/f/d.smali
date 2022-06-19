.class public final Le/a/a/c/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/f/c;


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/a/a/c/f/d$a;->b:Le/a/a/c/f/d$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/f/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public c()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public e(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public h(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public i(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public j(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public k()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public m(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public n(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/f/d;->o()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public final o()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Le/a/a/c/f/d;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method
