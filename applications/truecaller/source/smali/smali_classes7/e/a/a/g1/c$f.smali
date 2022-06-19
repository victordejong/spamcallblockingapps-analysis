.class public final Le/a/a/g1/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g1/c;->e(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/w/d;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g1/c$f;->a:Ls1/w/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/g1/c$f;->a:Ls1/w/d;

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
