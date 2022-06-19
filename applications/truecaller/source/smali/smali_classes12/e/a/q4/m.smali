.class public final synthetic Le/a/q4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Le/a/o5/p;


# direct methods
.method public synthetic constructor <init>(Le/a/o5/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/m;->a:Le/a/o5/p;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le/a/q4/m;->a:Le/a/o5/p;

    check-cast p1, Le/m/d/p/b;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p1, Le/m/d/p/b;->a:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v0, v1}, Le/a/o5/p;->onResult(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
