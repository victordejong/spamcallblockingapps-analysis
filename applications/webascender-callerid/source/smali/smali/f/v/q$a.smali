.class Lf/v/q$a;
.super Lf/v/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/q;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/v/m;


# direct methods
.method constructor <init>(Lf/v/q;Lf/v/m;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/v/q$a;->a:Lf/v/m;

    invoke-direct {p0}, Lf/v/n;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lf/v/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v/q$a;->a:Lf/v/m;

    invoke-virtual {v0}, Lf/v/m;->X()V

    .line 2
    invoke-virtual {p1, p0}, Lf/v/m;->T(Lf/v/m$f;)Lf/v/m;

    return-void
.end method
