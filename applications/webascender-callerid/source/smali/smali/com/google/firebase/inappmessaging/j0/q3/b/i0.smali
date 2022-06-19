.class public final Lcom/google/firebase/inappmessaging/j0/q3/b/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/i0/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/i0/b/b<",
        "Lcom/google/firebase/inappmessaging/model/m;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/google/firebase/inappmessaging/j0/q3/b/h0;)Lcom/google/firebase/inappmessaging/model/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/h0;->a()Lcom/google/firebase/inappmessaging/model/m;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/firebase/inappmessaging/i0/b/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/model/m;

    return-object p0
.end method
