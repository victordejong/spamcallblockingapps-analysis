.class public final Le/a/a/g1/c$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g1/c;->c(Le/m/h/b/b/d;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/w/d;

.field public final synthetic b:Le/m/h/b/b/c;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/m/h/b/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g1/c$n;->a:Ls1/w/d;

    iput-object p2, p0, Le/a/a/g1/c$n;->b:Le/m/h/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/g1/c$n;->a:Ls1/w/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/g1/c$n;->b:Le/m/h/b/b/c;

    invoke-interface {p1}, Le/m/h/b/b/c;->close()V

    return-void
.end method
