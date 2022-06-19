.class final synthetic Lcom/google/firebase/inappmessaging/display/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;


# instance fields
.field private final f:Lcom/google/firebase/inappmessaging/display/b;

.field private final g:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/a;->f:Lcom/google/firebase/inappmessaging/display/b;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/a;->g:Landroid/app/Activity;

    return-void
.end method

.method public static a(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/display/a;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/display/a;-><init>(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public displayMessage(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/a;->f:Lcom/google/firebase/inappmessaging/display/b;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/a;->g:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcom/google/firebase/inappmessaging/display/b;->x(Lcom/google/firebase/inappmessaging/display/b;Landroid/app/Activity;Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t;)V

    return-void
.end method
