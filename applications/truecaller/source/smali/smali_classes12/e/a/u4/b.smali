.class public final synthetic Le/a/u4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/scanner/NumberDetectorProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/scanner/NumberDetectorProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/u4/b;->a:Lcom/truecaller/scanner/NumberDetectorProcessor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/u4/b;->a:Lcom/truecaller/scanner/NumberDetectorProcessor;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lcom/truecaller/scanner/NumberDetectorProcessor;->d:Z

    return-void
.end method
