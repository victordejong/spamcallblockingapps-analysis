.class public Lcom/truecaller/log/AssertionUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$e:Lcom/truecaller/log/AssertionUtil$TcAssertionError;


# direct methods
.method public constructor <init>(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/log/AssertionUtil$1;->val$e:Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/log/AssertionUtil$1;->val$e:Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    throw v0
.end method
