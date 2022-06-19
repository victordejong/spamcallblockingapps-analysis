.class public final Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->e(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Float;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$b;->b:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView$b;->b:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 3
    iput p1, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
