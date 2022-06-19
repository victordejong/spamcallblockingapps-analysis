.class public final Lm/h0$b$a;
.super Lm/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/h0$b;->f(Ln/h;Lm/a0;J)Lm/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Ln/h;

.field final synthetic g:Lm/a0;

.field final synthetic h:J


# direct methods
.method constructor <init>(Ln/h;Lm/a0;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/h0$b$a;->f:Ln/h;

    iput-object p2, p0, Lm/h0$b$a;->g:Lm/a0;

    iput-wide p3, p0, Lm/h0$b$a;->h:J

    invoke-direct {p0}, Lm/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm/h0$b$a;->h:J

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/h0$b$a;->g:Lm/a0;

    return-object v0
.end method

.method public source()Ln/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/h0$b$a;->f:Ln/h;

    return-object v0
.end method
