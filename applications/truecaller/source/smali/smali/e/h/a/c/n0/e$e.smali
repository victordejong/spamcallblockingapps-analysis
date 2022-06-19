.class public Le/h/a/c/n0/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/n0/e;->h(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Le/h/a/c/n0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/n0/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/n0/e$e;->b:Le/h/a/c/n0/e;

    iput-object p2, p0, Le/h/a/c/n0/e$e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/e$e;->b:Le/h/a/c/n0/e;

    iget-object v1, p0, Le/h/a/c/n0/e$e;->a:Landroid/content/Context;

    sget-object v2, Le/h/a/c/n0/c;->b:Le/h/a/c/n0/c;

    invoke-virtual {v0, v1, v2}, Le/h/a/c/n0/e;->g(Landroid/content/Context;Le/h/a/c/n0/c;)V

    .line 2
    iget-object v0, p0, Le/h/a/c/n0/e$e;->b:Le/h/a/c/n0/e;

    iget-object v1, p0, Le/h/a/c/n0/e$e;->a:Landroid/content/Context;

    sget-object v2, Le/h/a/c/n0/c;->c:Le/h/a/c/n0/c;

    invoke-virtual {v0, v1, v2}, Le/h/a/c/n0/e;->g(Landroid/content/Context;Le/h/a/c/n0/c;)V

    return-void
.end method
