.class public final Le/a/a/h1/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/h1/n/a$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/p5/h0;

.field public final c:Le/a/a/h1/n/a;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/h1/n/m;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/h1/n/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/j2;Le/a/p5/h0;Le/a/a/h1/n/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/h1/n/a;->c:Le/a/a/h1/n/a;

    .line 3
    iput-object p1, p0, Le/a/a/h1/n/a;->a:Le/a/j2;

    .line 4
    iput-object p2, p0, Le/a/a/h1/n/a;->b:Le/a/p5/h0;

    .line 5
    new-instance p1, Le/a/a/h1/n/a$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/h1/n/a$b;-><init>(Le/a/a/h1/n/a;I)V

    iput-object p1, p0, Le/a/a/h1/n/a;->d:Ljavax/inject/Provider;

    .line 6
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/h1/n/a;->e:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final a()Le/a/a/h1/n/h;
    .locals 9

    .line 1
    new-instance v6, Le/a/a/h1/n/h;

    iget-object v0, p0, Le/a/a/h1/n/a;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/a/h1/n/f;

    .line 2
    new-instance v2, Le/a/a/h1/n/c;

    iget-object v0, p0, Le/a/a/h1/n/a;->b:Le/a/p5/h0;

    invoke-direct {v2, v0}, Le/a/a/h1/n/c;-><init>(Le/a/p5/h0;)V

    .line 3
    new-instance v3, Le/a/a/h1/n/d;

    .line 4
    new-instance v0, Le/a/x2/b;

    iget-object v4, p0, Le/a/a/h1/n/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v4

    const-string v5, "Cannot return null from a non-@Nullable component method"

    .line 5
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-direct {v0, v4}, Le/a/x2/b;-><init>(Le/a/o5/f0;)V

    .line 7
    invoke-direct {v3, v0}, Le/a/a/h1/n/d;-><init>(Le/a/x2/b;)V

    .line 8
    iget-object v0, p0, Le/a/a/h1/n/a;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/a/h1/n/e;

    .line 9
    new-instance v7, Le/a/a/h1/g;

    iget-object v0, p0, Le/a/a/h1/n/a;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    .line 10
    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v8, p0, Le/a/a/h1/n/a;->a:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->K6()Le/a/p4/b;

    move-result-object v8

    .line 12
    invoke-static {v8, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-direct {v7, v0, v8}, Le/a/a/h1/g;-><init>(Le/a/u3/g;Le/a/p4/b;)V

    move-object v0, v6

    move-object v5, v7

    .line 14
    invoke-direct/range {v0 .. v5}, Le/a/a/h1/n/h;-><init>(Le/a/a/h1/n/f;Le/a/a/h1/n/b;Le/a/a/h1/n/d;Le/a/a/h1/n/e;Le/a/a/h1/g;)V

    return-object v6
.end method
