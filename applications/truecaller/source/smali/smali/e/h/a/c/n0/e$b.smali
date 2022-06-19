.class public Le/h/a/c/n0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/n0/e;->a(Landroid/content/Context;Le/h/a/c/n0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Le/h/a/c/n0/c;

.field public final synthetic c:Le/h/a/c/n0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/n0/e;Landroid/content/Context;Le/h/a/c/n0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/n0/e$b;->c:Le/h/a/c/n0/e;

    iput-object p2, p0, Le/h/a/c/n0/e$b;->a:Landroid/content/Context;

    iput-object p3, p0, Le/h/a/c/n0/e$b;->b:Le/h/a/c/n0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/e$b;->c:Le/h/a/c/n0/e;

    .line 2
    iget-object v0, v0, Le/h/a/c/n0/e;->m:Le/h/a/c/u0/a;

    .line 3
    iget-object v1, p0, Le/h/a/c/n0/e$b;->a:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/n0/e$b;->b:Le/h/a/c/n0/c;

    invoke-virtual {v0, v1, v2}, Le/h/a/c/u0/a;->a(Landroid/content/Context;Le/h/a/c/n0/c;)V

    return-void
.end method
