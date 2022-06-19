.class public Lcom/google/firebase/inappmessaging/display/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/Picasso$d;


# instance fields
.field private a:Lcom/google/firebase/inappmessaging/model/i;

.field private b:Lcom/google/firebase/inappmessaging/t;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/l;->a:Lcom/google/firebase/inappmessaging/model/i;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/l;->b:Lcom/google/firebase/inappmessaging/t;

    if-eqz p1, :cond_1

    .line 2
    instance-of p1, p3, Ljava/io/IOException;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to decode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/l;->b:Lcom/google/firebase/inappmessaging/t;

    sget-object p2, Lcom/google/firebase/inappmessaging/t$b;->IMAGE_UNSUPPORTED_FORMAT:Lcom/google/firebase/inappmessaging/t$b;

    invoke-interface {p1, p2}, Lcom/google/firebase/inappmessaging/t;->b(Lcom/google/firebase/inappmessaging/t$b;)Lcom/google/android/gms/tasks/g;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/l;->b:Lcom/google/firebase/inappmessaging/t;

    sget-object p2, Lcom/google/firebase/inappmessaging/t$b;->UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/t$b;

    invoke-interface {p1, p2}, Lcom/google/firebase/inappmessaging/t;->b(Lcom/google/firebase/inappmessaging/t$b;)Lcom/google/android/gms/tasks/g;

    :cond_1
    :goto_0
    return-void
.end method
