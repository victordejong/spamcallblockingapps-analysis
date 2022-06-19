.class public Le/h/a/c/u0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/u0/b;->m(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Le/h/a/c/u0/b;


# direct methods
.method public constructor <init>(Le/h/a/c/u0/b;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/u0/b$a;->b:Le/h/a/c/u0/b;

    iput-object p2, p0, Le/h/a/c/u0/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/u0/b$a;->b:Le/h/a/c/u0/b;

    .line 2
    iget-object v0, v0, Le/h/a/c/u0/b;->h:Le/h/a/c/l0/a;

    .line 3
    iget-object v1, p0, Le/h/a/c/u0/b$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Le/h/a/c/l0/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
