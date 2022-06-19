.class final synthetic Lcom/google/firebase/messaging/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/k/b;


# instance fields
.field private final a:Lcom/google/firebase/messaging/FirebaseMessaging$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/k;->a:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/k/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/k;->a:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->d(Lcom/google/firebase/k/a;)V

    return-void
.end method
