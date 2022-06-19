.class public final Le/a/s/n/b/g/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/s/n/b/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/s/n/b/g/a;


# direct methods
.method public constructor <init>(Le/a/s/n/b/g/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/s/n/b/g/a$b;->a:Le/a/s/n/b/g/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/a$b;->a:Le/a/s/n/b/g/a;

    .line 2
    new-instance v7, Le/a/s/n/b/g/l;

    iget-object v1, v0, Le/a/s/n/b/g/a;->a:Le/a/s/b;

    invoke-interface {v1}, Le/a/s/e$a;->e()Ls1/w/f;

    move-result-object v2

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v3, v0, Le/a/s/n/b/g/a;->a:Le/a/s/b;

    invoke-interface {v3}, Le/a/s/b;->Y0()Le/a/s/s/i;

    move-result-object v3

    .line 5
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v4, v0, Le/a/s/n/b/g/a;->a:Le/a/s/b;

    invoke-interface {v4}, Le/a/s/b;->A()Le/a/s/s/a;

    move-result-object v4

    .line 7
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v5, v0, Le/a/s/n/b/g/a;->a:Le/a/s/b;

    invoke-interface {v5}, Le/a/s/e$a;->p()Le/a/p5/j0;

    move-result-object v5

    .line 9
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v0, v0, Le/a/s/n/b/g/a;->a:Le/a/s/b;

    invoke-interface {v0}, Le/a/s/b;->g3()Le/a/s/s/c;

    move-result-object v6

    .line 11
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v7

    .line 12
    invoke-direct/range {v1 .. v6}, Le/a/s/n/b/g/l;-><init>(Ls1/w/f;Le/a/s/s/i;Le/a/s/s/a;Le/a/p5/j0;Le/a/s/s/c;)V

    return-object v7
.end method
