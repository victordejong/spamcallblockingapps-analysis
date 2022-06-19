.class public final Le/m/a/f/s/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wallet/callback/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
        "Lcom/google/android/gms/wallet/callback/CallbackOutput;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/os/Messenger;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/os/Messenger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/f/s/a/b;->a:Landroid/os/Messenger;

    iput p2, p0, Le/m/a/f/s/a/b;->b:I

    return-void
.end method
