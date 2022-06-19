.class public final Le/a/a/c/f/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/f/b;
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
.field public final a:Le/a/a/c/f/b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/f/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/f/b$b;->a:Le/a/a/c/f/b;

    .line 3
    iput p2, p0, Le/a/a/c/f/b$b;->b:I

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
    iget v0, p0, Le/a/a/c/f/b$b;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Le/a/a/c/f/d;

    invoke-direct {v0}, Le/a/a/c/f/d;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/a/c/f/b$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/a/c/f/b$b;->a:Le/a/a/c/f/b;

    .line 5
    new-instance v1, Le/a/a/c/f/g;

    iget-object v2, v0, Le/a/a/c/f/b;->a:Le/a/a/c/f/e;

    .line 6
    iget-object v2, v2, Le/a/a/c/f/e;->a:Ljava/lang/Long;

    .line 7
    iget-object v3, v0, Le/a/a/c/f/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v3

    const-string v4, "Cannot return null from a non-@Nullable component method"

    .line 8
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v5, v0, Le/a/a/c/f/b;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v5

    .line 10
    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v0, v0, Le/a/a/c/f/b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/c/f/c;

    invoke-direct {v1, v2, v3, v5, v0}, Le/a/a/c/f/g;-><init>(Ljava/lang/Long;Le/a/p5/c0;Le/a/o5/b0;Le/a/a/c/f/c;)V

    return-object v1
.end method
