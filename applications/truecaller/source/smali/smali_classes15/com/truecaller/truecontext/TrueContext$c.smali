.class public final Lcom/truecaller/truecontext/TrueContext$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/truecontext/TrueContext;->setIsExpanded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/truecontext/TrueContext;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/truecontext/TrueContext;Z)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/truecontext/TrueContext$c;->a:Lcom/truecaller/truecontext/TrueContext;

    iput-boolean p2, p0, Lcom/truecaller/truecontext/TrueContext$c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/truecontext/TrueContext$c;->a:Lcom/truecaller/truecontext/TrueContext;

    iget-boolean v1, p0, Lcom/truecaller/truecontext/TrueContext$c;->b:Z

    invoke-static {v0, v1}, Lcom/truecaller/truecontext/TrueContext;->f1(Lcom/truecaller/truecontext/TrueContext;Z)V

    return-void
.end method
