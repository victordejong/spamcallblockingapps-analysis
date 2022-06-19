.class public final Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/text/util/Linkify$TransformFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->u7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;->a:I

    iput-object p2, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;->a:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
