.class public final Le/a/h/b/d/a/a/e0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/e0/b;


# instance fields
.field public final a:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/a/a/e0/c;->a:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a()Le/a/h/b/d/a/a/e0/a;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/e0/c;->a:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->i6:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x17a

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Le/a/h/b/d/a/a/e0/a;

    const v1, 0x7f0804d8

    const v2, 0x7f12075b

    const-string v3, "1545"

    invoke-direct {v0, v1, v2, v3}, Le/a/h/b/d/a/a/e0/a;-><init>(IILjava/lang/String;)V

    return-object v0
.end method
