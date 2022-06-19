.class public final Le/a/h0/a/b0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/a/b0/f;
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
.field public final a:Le/a/h0/a/b0/f;


# direct methods
.method public constructor <init>(Le/a/h0/a/b0/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/h0/a/b0/f$b;->a:Le/a/h0/a/b0/f;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h0/a/b0/f$b;->a:Le/a/h0/a/b0/f;

    .line 2
    iget-object v1, v0, Le/a/h0/a/b0/f;->a:Le/a/h0/a/b0/b;

    iget-object v2, v0, Le/a/h0/a/b0/f;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v4, v0, Le/a/h0/a/b0/f;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v4

    .line 5
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v5, v0, Le/a/h0/a/b0/f;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->I5()Le/a/r2/f;

    move-result-object v5

    .line 7
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v0, v0, Le/a/h0/a/b0/f;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->G6()Le/a/o5/z;

    move-result-object v0

    .line 9
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Le/a/h0/a/b0/d;

    invoke-interface {v2}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5, v4}, Le/a/h0/a/b0/d;-><init>(Le/a/r2/j;Le/a/o5/z;Le/a/r2/f;Le/a/p5/c0;)V

    return-object v1
.end method
