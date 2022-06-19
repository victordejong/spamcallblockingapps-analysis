.class public final Le/a/s/q/f/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/s/q/f/a;
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
.field public final a:Le/a/s/q/f/a;


# direct methods
.method public constructor <init>(Le/a/s/q/f/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/s/q/f/a$b;->a:Le/a/s/q/f/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/s/q/f/a$b;->a:Le/a/s/q/f/a;

    .line 2
    new-instance v10, Le/a/s/q/f/e;

    iget-object v1, v0, Le/a/s/q/f/a;->a:Le/a/s/b;

    invoke-interface {v1}, Le/a/s/e$a;->e()Ls1/w/f;

    move-result-object v2

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v3, v0, Le/a/s/q/f/a;->a:Le/a/s/b;

    invoke-interface {v3}, Le/a/s/e$a;->p()Le/a/p5/j0;

    move-result-object v3

    .line 5
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v4, v0, Le/a/s/q/f/a;->a:Le/a/s/b;

    invoke-interface {v4}, Le/a/s/b;->A()Le/a/s/s/a;

    move-result-object v4

    .line 7
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v5, v0, Le/a/s/q/f/a;->a:Le/a/s/b;

    invoke-interface {v5}, Le/a/s/b;->g3()Le/a/s/s/c;

    move-result-object v5

    .line 9
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v6, v0, Le/a/s/q/f/a;->a:Le/a/s/b;

    invoke-interface {v6}, Le/a/s/b;->K1()Le/a/s/r/c;

    move-result-object v6

    .line 11
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v7, v0, Le/a/s/q/f/a;->a:Le/a/s/b;

    invoke-interface {v7}, Le/a/s/e$a;->a0()Le/a/b0/q/e;

    move-result-object v7

    .line 13
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v8, v0, Le/a/s/q/f/a;->a:Le/a/s/b;

    invoke-interface {v8}, Le/a/s/e$a;->q()Le/a/y2/q/a;

    move-result-object v8

    .line 15
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v0, v0, Le/a/s/q/f/a;->a:Le/a/s/b;

    invoke-interface {v0}, Le/a/s/e$a;->f()Le/a/l/p2/v0;

    move-result-object v9

    .line 17
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v10

    .line 18
    invoke-direct/range {v1 .. v9}, Le/a/s/q/f/e;-><init>(Ls1/w/f;Le/a/p5/j0;Le/a/s/s/a;Le/a/s/s/c;Le/a/s/r/c;Le/a/b0/q/e;Le/a/y2/q/a;Le/a/l/p2/v0;)V

    return-object v10
.end method
