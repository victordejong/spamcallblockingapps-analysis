.class public Le/h/a/c/q0/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/b0;->a(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

.field public final synthetic b:Le/h/a/c/q0/b0;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/b0;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/b0$b;->b:Le/h/a/c/q0/b0;

    iput-object p2, p0, Le/h/a/c/q0/b0$b;->a:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/b0$b;->b:Le/h/a/c/q0/b0;

    iget-object v1, p0, Le/h/a/c/q0/b0$b;->a:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-virtual {v0, v1}, Le/h/a/c/q0/b0;->a(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V

    return-void
.end method
