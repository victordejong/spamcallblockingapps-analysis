.class public final Le/a/f/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/truecontext/TrueContext$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/c;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/f/a/c;


# direct methods
.method public constructor <init>(Le/a/f/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/f/a/c$a;->a:Le/a/f/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/a/c$a;->a:Le/a/f/a/c;

    invoke-virtual {v0}, Le/a/f/a/c;->QA()Le/a/f/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/f/a/d;->q7(Z)V

    return-void
.end method
