.class public final Lu3/p0/g/e$c;
.super Lv3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/g/e;-><init>(Lu3/e0;Lu3/g0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic l:Lu3/p0/g/e;


# direct methods
.method public constructor <init>(Lu3/p0/g/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/p0/g/e$c;->l:Lu3/p0/g/e;

    invoke-direct {p0}, Lv3/b;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/g/e$c;->l:Lu3/p0/g/e;

    invoke-virtual {v0}, Lu3/p0/g/e;->cancel()V

    return-void
.end method
