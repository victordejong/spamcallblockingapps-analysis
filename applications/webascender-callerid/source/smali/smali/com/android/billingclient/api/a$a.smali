.class public final Lcom/android/billingclient/api/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/a;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/a$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Lcom/android/billingclient/api/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/billingclient/api/a;-><init>(Lcom/android/billingclient/api/n;)V

    .line 2
    invoke-static {v1, v0}, Lcom/android/billingclient/api/a;->c(Lcom/android/billingclient/api/a;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Purchase token must be set"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/a$a;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/a$a;->a:Ljava/lang/String;

    return-object p0
.end method
