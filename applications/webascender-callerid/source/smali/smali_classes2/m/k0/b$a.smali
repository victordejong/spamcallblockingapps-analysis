.class public final Lm/k0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/k0/b;->e(Lm/u;)Lm/u$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm/u;


# direct methods
.method constructor <init>(Lm/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/k0/b$a;->a:Lm/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm/f;)Lm/u;
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lm/k0/b$a;->a:Lm/u;

    return-object p1
.end method
