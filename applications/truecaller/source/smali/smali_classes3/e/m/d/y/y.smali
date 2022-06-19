.class public final synthetic Le/m/d/y/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/s/b;


# instance fields
.field public synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/y;->a:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    return-void
.end method


# virtual methods
.method public final a(Le/m/d/s/a;)V
    .locals 1

    iget-object p1, p0, Le/m/d/y/y;->a:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/firebase/messaging/FirebaseMessaging$a;->e:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Le/m/d/y/q0;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()V

    :cond_0
    return-void
.end method
