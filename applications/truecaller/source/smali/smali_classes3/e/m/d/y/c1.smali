.class public final synthetic Le/m/d/y/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic a:Le/m/d/y/d1$a;


# direct methods
.method public synthetic constructor <init>(Le/m/d/y/d1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/c1;->a:Le/m/d/y/d1$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/d/y/c1;->a:Le/m/d/y/d1$a;

    .line 1
    iget-object v1, v0, Le/m/d/y/d1$a;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2
    invoke-virtual {v0}, Le/m/d/y/d1$a;->a()V

    return-void
.end method
