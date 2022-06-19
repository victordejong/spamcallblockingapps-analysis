.class public Le/h/a/c/n0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Le/h/a/c/n0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/n0/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/n0/g;->b:Le/h/a/c/n0/e;

    iput-object p2, p0, Le/h/a/c/n0/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/n0/g;->b:Le/h/a/c/n0/e;

    .line 2
    iget-object v0, v0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/n0/g;->b:Le/h/a/c/n0/e;

    .line 4
    iget-object v1, v1, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Pushing Notification Viewed event onto queue flush async"

    .line 6
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/h/a/c/n0/g;->b:Le/h/a/c/n0/e;

    iget-object v1, p0, Le/h/a/c/n0/g;->a:Landroid/content/Context;

    sget-object v2, Le/h/a/c/n0/c;->c:Le/h/a/c/n0/c;

    invoke-virtual {v0, v1, v2}, Le/h/a/c/n0/e;->g(Landroid/content/Context;Le/h/a/c/n0/c;)V

    return-void
.end method
