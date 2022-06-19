.class public final Le/a/a/g1/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g1/c;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/w/d;

.field public final synthetic b:Le/a/a/g1/c;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/a/g1/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g1/c$h;->a:Ls1/w/d;

    iput-object p2, p0, Le/a/a/g1/c$h;->b:Le/a/a/g1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/g1/c$h;->a:Ls1/w/d;

    new-instance v0, Le/a/a/g1/a;

    iget-object v1, p0, Le/a/a/g1/c$h;->b:Le/a/a/g1/c;

    invoke-virtual {v1}, Le/a/a/g1/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "und"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Le/a/a/g1/a;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
