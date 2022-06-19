.class public final Lcom/truecaller/clipboard/ClipboardService$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/clipboard/ClipboardService$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/data/entity/Contact;

.field public final c:Lcom/truecaller/blocking/FilterMatch;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/clipboard/ClipboardService$a$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/truecaller/clipboard/ClipboardService$a$a;->b:Lcom/truecaller/data/entity/Contact;

    .line 4
    iput-object p3, p0, Lcom/truecaller/clipboard/ClipboardService$a$a;->c:Lcom/truecaller/blocking/FilterMatch;

    return-void
.end method
