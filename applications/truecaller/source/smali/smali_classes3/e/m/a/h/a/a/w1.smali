.class public final synthetic Le/m/a/h/a/a/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/x1;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/x1;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/w1;->a:Le/m/a/h/a/a/x1;

    iput-object p2, p0, Le/m/a/h/a/a/w1;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/a/w1;->a:Le/m/a/h/a/a/x1;

    iget-object v1, p0, Le/m/a/h/a/a/w1;->b:Landroid/content/Intent;

    .line 1
    iget-object v2, v0, Le/m/a/h/a/a/x1;->b:Le/m/a/h/a/a/z;

    iget-object v0, v0, Le/m/a/h/a/a/x1;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {v2, v0, v1}, Le/m/a/h/a/a/z;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
