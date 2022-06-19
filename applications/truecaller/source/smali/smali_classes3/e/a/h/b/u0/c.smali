.class public final Le/a/h/b/u0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/u0/b;


# instance fields
.field public final a:Le/a/c/m/b;

.field public final b:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/m/b;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsEmergencyContactHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/u0/c;->a:Le/a/c/m/b;

    iput-object p2, p0, Le/a/h/b/u0/c;->b:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h/b/u0/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/h/b/u0/c;->a:Le/a/c/m/b;

    invoke-interface {v1}, Le/a/c/m/b;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3
    new-instance v1, Le/a/h/b/u0/a;

    const v4, 0x7f080536

    const v5, 0x7f120756

    const-string v3, "COVID Helpline"

    const-string v7, "COVID Helpline"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Le/a/h/b/u0/a;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/h/b/u0/c;->b:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->a0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Le/a/h/b/u0/a;

    const v4, 0x7f080862

    const v5, 0x7f12075a

    const-string v3, "Women Helpline"

    const-string v6, "181"

    const-string v7, "WOMEN Helpline"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Le/a/h/b/u0/a;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Le/a/h/b/u0/a;

    const v10, 0x7f0804d2

    const v11, 0x7f120757

    const-string v9, "Emergency Number"

    const-string v12, "112"

    const-string v13, "WOMEN Helpline"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Le/a/h/b/u0/a;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
