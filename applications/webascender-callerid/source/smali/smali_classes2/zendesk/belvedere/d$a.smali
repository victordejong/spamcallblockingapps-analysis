.class Lzendesk/belvedere/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/d;->internalSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Lzendesk/belvedere/d;


# direct methods
.method constructor <init>(Lzendesk/belvedere/d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/d$a;->g:Lzendesk/belvedere/d;

    iput-object p2, p0, Lzendesk/belvedere/d$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/d$a;->g:Lzendesk/belvedere/d;

    iget-object v1, p0, Lzendesk/belvedere/d$a;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lzendesk/belvedere/d;->success(Ljava/lang/Object;)V

    return-void
.end method
