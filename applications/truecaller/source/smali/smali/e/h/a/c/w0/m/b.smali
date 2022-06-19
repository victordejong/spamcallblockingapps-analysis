.class public Le/h/a/c/w0/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/w0/m/c;


# instance fields
.field public final a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final b:Landroid/content/Context;

.field public final c:Le/h/a/c/w0/b;


# direct methods
.method public constructor <init>(Le/h/a/c/w0/b;Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/h/a/c/w0/m/b;->b:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Le/h/a/c/w0/m/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iput-object p1, p0, Le/h/a/c/w0/m/b;->c:Le/h/a/c/w0/b;

    .line 5
    invoke-static {p2}, Le/h/a/c/h0;->b(Landroid/content/Context;)Le/h/a/c/h0;

    return-void
.end method
