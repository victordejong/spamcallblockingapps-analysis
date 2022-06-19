.class Lzendesk/commonui/TypingIndicatorView$a;
.super Lf/w/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/commonui/TypingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lzendesk/commonui/TypingIndicatorView;


# direct methods
.method constructor <init>(Lzendesk/commonui/TypingIndicatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/TypingIndicatorView$a;->b:Lzendesk/commonui/TypingIndicatorView;

    invoke-direct {p0}, Lf/w/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/commonui/TypingIndicatorView$a;->b:Lzendesk/commonui/TypingIndicatorView;

    new-instance v1, Lzendesk/commonui/TypingIndicatorView$a$a;

    invoke-direct {v1, p0, p1}, Lzendesk/commonui/TypingIndicatorView$a$a;-><init>(Lzendesk/commonui/TypingIndicatorView$a;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
