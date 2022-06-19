.class final Lzendesk/belvedere/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/g;->a(Lzendesk/belvedere/f$b;)Lzendesk/belvedere/g$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic f:Lzendesk/belvedere/f$b;


# direct methods
.method constructor <init>(Lzendesk/belvedere/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/g$a;->f:Lzendesk/belvedere/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/g$a;->f:Lzendesk/belvedere/f$b;

    invoke-interface {p1}, Lzendesk/belvedere/f$b;->b()V

    return-void
.end method
