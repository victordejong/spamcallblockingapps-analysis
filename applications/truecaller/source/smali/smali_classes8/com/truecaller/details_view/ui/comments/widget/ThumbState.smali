.class public abstract Lcom/truecaller/details_view/ui/comments/widget/ThumbState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;,
        Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpPressed;,
        Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownDefault;,
        Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownPressed;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IILs1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->a:I

    iput-object p3, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->b:Ljava/lang/String;

    iput p4, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->c:I

    iput p5, p0, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->d:I

    return-void
.end method
