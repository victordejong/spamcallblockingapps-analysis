.class public final Le/a/k4/o/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lq3/a/n;


# direct methods
.method public constructor <init>(Lq3/a/n;)V
    .locals 0

    iput-object p1, p0, Le/a/k4/o/d;->a:Lq3/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k4/o/d;->a:Lq3/a/n;

    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
