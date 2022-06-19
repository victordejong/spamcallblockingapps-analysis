.class public Le/h/a/c/q0/b0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/b0;->d(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/q0/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

.field public final synthetic c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final synthetic d:Le/h/a/c/q0/b0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/q0/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/b0$g;->a:Landroid/content/Context;

    iput-object p2, p0, Le/h/a/c/q0/b0$g;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iput-object p3, p0, Le/h/a/c/q0/b0$g;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iput-object p4, p0, Le/h/a/c/q0/b0$g;->d:Le/h/a/c/q0/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/b0$g;->a:Landroid/content/Context;

    iget-object v1, p0, Le/h/a/c/q0/b0$g;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iget-object v2, p0, Le/h/a/c/q0/b0$g;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    invoke-static {v0, v1, v2}, Le/h/a/c/q0/b0;->g(Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    return-void
.end method
