.class public final Lokhttp3/internal/connection/e$c;
.super Ln/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/e;-><init>(Lm/c0;Lm/e0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic l:Lokhttp3/internal/connection/e;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/e$c;->l:Lokhttp3/internal/connection/e;

    invoke-direct {p0}, Ln/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/e$c;->l:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->cancel()V

    return-void
.end method
