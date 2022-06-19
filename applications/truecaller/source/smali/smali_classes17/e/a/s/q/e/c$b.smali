.class public final Le/a/s/q/e/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/s/q/e/c;
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
.field public final a:Le/a/s/q/e/c;


# direct methods
.method public constructor <init>(Le/a/s/q/e/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/s/q/e/c$b;->a:Le/a/s/q/e/c;

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
    iget-object v0, p0, Le/a/s/q/e/c$b;->a:Le/a/s/q/e/c;

    .line 2
    new-instance v7, Le/a/s/q/e/h;

    iget-object v1, v0, Le/a/s/q/e/c;->a:Le/a/s/b;

    invoke-interface {v1}, Le/a/s/e$a;->e()Ls1/w/f;

    move-result-object v2

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v3, Le/a/s/q/e/b;

    iget-object v4, v0, Le/a/s/q/e/c;->a:Le/a/s/b;

    invoke-interface {v4}, Le/a/s/b;->T0()Le/a/s/o/d;

    move-result-object v4

    .line 5
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-direct {v3, v4}, Le/a/s/q/e/b;-><init>(Le/a/s/o/d;)V

    .line 7
    iget-object v4, v0, Le/a/s/q/e/c;->a:Le/a/s/b;

    invoke-interface {v4}, Le/a/s/e$a;->p()Le/a/p5/j0;

    move-result-object v4

    .line 8
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v5, v0, Le/a/s/q/e/c;->a:Le/a/s/b;

    invoke-interface {v5}, Le/a/s/b;->A()Le/a/s/s/a;

    move-result-object v5

    .line 10
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v0, v0, Le/a/s/q/e/c;->a:Le/a/s/b;

    invoke-interface {v0}, Le/a/s/b;->g3()Le/a/s/s/c;

    move-result-object v6

    .line 12
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v7

    .line 13
    invoke-direct/range {v1 .. v6}, Le/a/s/q/e/h;-><init>(Ls1/w/f;Le/a/s/q/e/a;Le/a/p5/j0;Le/a/s/s/a;Le/a/s/s/c;)V

    return-object v7
.end method
