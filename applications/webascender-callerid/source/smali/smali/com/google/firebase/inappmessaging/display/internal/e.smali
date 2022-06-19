.class public Lcom/google/firebase/inappmessaging/display/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/Picasso;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/e;->a:Lcom/squareup/picasso/Picasso;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/e;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelTag(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/display/internal/e$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/e$a;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/e;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/e$a;-><init>(Lcom/squareup/picasso/x;)V

    return-object v0
.end method
