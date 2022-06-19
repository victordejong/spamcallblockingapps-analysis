.class public final Lcom/razorpay/g$_H$;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/razorpay/g$_H$;->a:Ljava/lang/Boolean;

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/razorpay/g$_H$;->b:Ljava/lang/Integer;

    .line 3
    sput-object v0, Lcom/razorpay/g$_H$;->c:Ljava/lang/Integer;

    return-void
.end method
