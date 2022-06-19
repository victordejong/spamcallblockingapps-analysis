.class public final Le/a/t1$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
.field public final a:Le/a/t1$w;


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$w;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$w$a;->a:Le/a/t1$w;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/t1$w$a;->a:Le/a/t1$w;

    .line 2
    new-instance v11, Le/a/e/b/p/g;

    iget-object v1, v0, Le/a/t1$w;->a:Le/a/t1;

    .line 3
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 4
    invoke-interface {v1}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v2

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 5
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v3, v0, Le/a/t1$w;->a:Le/a/t1;

    .line 7
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 8
    invoke-interface {v3}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v3

    .line 9
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v4, v0, Le/a/t1$w;->a:Le/a/t1;

    .line 11
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 12
    invoke-interface {v4}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v4

    .line 13
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v5, v0, Le/a/t1$w;->a:Le/a/t1;

    .line 15
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 16
    invoke-interface {v5}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object v5

    .line 17
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v6, v0, Le/a/t1$w;->a:Le/a/t1;

    .line 19
    iget-object v6, v6, Le/a/t1;->b:Le/a/j2;

    .line 20
    invoke-interface {v6}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v6

    .line 21
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v7, v0, Le/a/t1$w;->a:Le/a/t1;

    .line 23
    iget-object v7, v7, Le/a/t1;->b:Le/a/j2;

    .line 24
    invoke-interface {v7}, Le/a/j2;->L4()Lcom/truecaller/callrecording/CallRecordingManager;

    move-result-object v7

    .line 25
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v8, v0, Le/a/t1$w;->a:Le/a/t1;

    .line 27
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 28
    invoke-interface {v8}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v8

    .line 29
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v9, v0, Le/a/t1$w;->a:Le/a/t1;

    .line 31
    iget-object v9, v9, Le/a/t1;->b:Le/a/j2;

    .line 32
    invoke-interface {v9}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v9

    .line 33
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v0, v0, Le/a/t1$w;->a:Le/a/t1;

    .line 35
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 36
    invoke-interface {v0}, Le/a/j2;->k3()Le/a/c0/h;

    move-result-object v10

    .line 37
    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v11

    .line 38
    invoke-direct/range {v1 .. v10}, Le/a/e/b/p/g;-><init>(Ls1/w/f;Le/a/p5/a0;Le/a/p5/g;Le/a/h5/m;Le/a/q2/a;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/h5/w;Le/a/u3/g;Le/a/c0/h;)V

    return-object v11
.end method
