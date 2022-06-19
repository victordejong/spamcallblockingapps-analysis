.class public final Le/a/c/a/e/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/e/b/a;
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
.field public final a:Le/a/c/a/e/b/a;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/c/a/e/b/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/a/e/b/a$b;->a:Le/a/c/a/e/b/a;

    .line 3
    iput p2, p0, Le/a/c/a/e/b/a$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/c/a/e/b/a$b;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/a/e/b/a$b;->a:Le/a/c/a/e/b/a;

    .line 3
    new-instance v1, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;

    iget-object v0, v0, Le/a/c/a/e/b/a;->a:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v0

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-direct {v1, v0}, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;-><init>(Le/a/c/e/c;)V

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/c/a/e/b/a$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/c/a/e/b/a$b;->a:Le/a/c/a/e/b/a;

    .line 8
    new-instance v1, Le/a/c/a/e/c/e;

    iget-object v3, v0, Le/a/c/a/e/b/a;->a:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->j5()Le/a/c/w/o0/g;

    move-result-object v3

    .line 9
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v4, v0, Le/a/c/a/e/b/a;->b:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 11
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Le/a/c/a/e/b/a;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/i/h;

    invoke-direct {v1, v3, v4, v0}, Le/a/c/a/e/c/e;-><init>(Le/a/c/w/o0/g;Ls1/w/f;Le/a/c/a/i/h;)V

    return-object v1

    .line 13
    :cond_2
    iget-object v0, p0, Le/a/c/a/e/b/a$b;->a:Le/a/c/a/e/b/a;

    .line 14
    new-instance v1, Le/a/c/a/a/g;

    .line 15
    const-class v2, Le/a/c/a/e/c/e;

    iget-object v0, v0, Le/a/c/a/e/b/a;->i:Ljavax/inject/Provider;

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 16
    invoke-direct {v1, v0}, Le/a/c/a/a/g;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
